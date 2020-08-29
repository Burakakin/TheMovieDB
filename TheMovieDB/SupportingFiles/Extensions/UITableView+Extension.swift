
import UIKit


extension UITableView {


    func restore() {
        self.backgroundView = nil
        self.separatorStyle = .singleLine
    }
    
    func registerNib<T>(_ type: T.Type){
        register(UINib(nibName: String(describing: type), bundle: nil), forCellReuseIdentifier: String(describing: type))
    }
    
    func registerHeaderFooterNib<T>(_ type: T.Type){
        register(UINib(nibName: String(describing: type), bundle: nil), forHeaderFooterViewReuseIdentifier: String(describing: type))
    }
    
    func dequeCell<T>(_ type: T.Type, for indexPath: IndexPath) -> T{
        return dequeueReusableCell(withIdentifier: String(describing: type), for: indexPath) as! T
    }
    
    func dequeueCell(_ configurator: CellConfigurator, for indexPath: IndexPath) -> UITableViewCell{
        return dequeueReusableCell(withIdentifier: type(of: configurator).reuseId, for: indexPath)
    }
    
    
}
