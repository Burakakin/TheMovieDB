

import Foundation

struct Section {
    var header: String? = nil
    let items: [CellConfigurator]
    
    init(header: String?, items: [CellConfigurator]) {
        self.header = header
        self.items = items
    }
    
    init(items: [CellConfigurator]) {
        self.items = items
    }
}

enum DataState<Item>{
    case loading
    case error(String)
    case success(Item)
}
