

import UIKit

class TableCellConfigurator<CellType: CellConfigurable, DataType>: CellConfigurator where CellType.Item == DataType, CellType: UITableViewCell {
    static var reuseId: String { return String(describing: CellType.self) }
    
    let item: DataType

    init(item: DataType) {
        self.item = item
    }

    func configure(cell: UIView) {
        (cell as! CellType).configure(with: item)
    }
}
