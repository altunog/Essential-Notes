import UIKit

struct FeedItem {}

var loadFeed: ((@escaping (FeedItem) -> Void) -> Void)?

loadFeed? { feedItem in
    
}


func loadFeed2(completion: @escaping (FeedItem) -> Void) {
    
    URLSession.shared.dataTask(with: URLRequest(url: URL(string: "")!)) { data, _, _ in
        completion(FeedItem())
    }
    
    
}
