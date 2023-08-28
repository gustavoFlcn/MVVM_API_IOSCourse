import Foundation

struct AddressFinderViewModel {
    func getAdressByCep(cep: String) async -> Result<Address, NetworkError> {
        guard let url = URL(string: "https://viacep.com.br/ws/\(cep)/json/") else {
            return .failure(NetworkError.invalidURL)
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            if let decodeResponse = try? JSONDecoder().decode(Address.self, from: data) {
                return .success(decodeResponse)
            }
        } catch {
            return (.failure(NetworkError.invalidData))
        }
        
        return .failure(NetworkError.unownError)
    }
} 