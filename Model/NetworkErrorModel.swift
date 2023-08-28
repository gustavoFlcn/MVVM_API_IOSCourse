import Foundation

enum NetworkError: Error {
    case invalidURL
    case invalidData
    case unownError
    
    var description: String {
        switch self {
        case .invalidURL:
            return "Invalid URL 🥲"
        case .invalidData:
            return "Invalid Data 🤯"
        case .unownError:
            return "I don't know what's happening 🙃"
        }
    }
}