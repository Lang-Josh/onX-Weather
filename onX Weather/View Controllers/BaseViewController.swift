import UIKit

class BaseViewController: UIViewController {
    
    let log = Log()
    
    deinit {
        log.note(file: className)
    }
}

// MARK: - LifeCycle

extension BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        log.note(file: className)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        log.note(file: className)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        log.note(file: className)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        log.note(file: className)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        log.note(file: className)
    }
}
