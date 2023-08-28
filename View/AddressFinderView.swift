import Foundation

class AddressFinderView {
    func run() {
        let result = await AddressFinderViewModel().getAdressByCep(cep: "01001000")
        switch result {
        case .success(let address):
        print(address)
        case .failure(let error):
        print(error.description)
        }
    }
}

