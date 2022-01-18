import Foundation

class NetworkDataFetch {
    
    static let shared = NetworkDataFetch()
    
    private init() {}
    
    func fetchAlbum(urlString: String, responce: @escaping (AlbumModel?,Error?) -> Void) {
        
        NetwotkRequest.shared.requestData(urlString: urlString) { result in
            switch result {
            case .success(let data):
                do {
                    let albums = try JSONDecoder().decode(AlbumModel.self, from: data)
                    responce(albums, nil)
                } catch let jsonError {
                    print("Failed to decode Json",jsonError)
                }
            case .failure(let error):
                print("error \(error.localizedDescription)")
                responce(nil,error)
            }
        }
    }
}



