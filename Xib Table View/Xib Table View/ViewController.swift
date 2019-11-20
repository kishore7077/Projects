

import UIKit
struct MyStruct {
    var firstName = String()
    var lastName = String()
    var image = UIImage()
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var array = [MyStruct(firstName: "Animal", lastName: "Monkey", image: #imageLiteral(resourceName: "monkey") ),
        MyStruct(firstName: "Animal", lastName: "Elephant", image: #imageLiteral(resourceName: "img8") ),
        MyStruct(firstName: "Animal", lastName: "Tiger", image: #imageLiteral(resourceName: "img1") ),
        MyStruct(firstName: "Animal", lastName: "Dog", image: #imageLiteral(resourceName: "Screen Shot 2019-01-03 at 5.16.35 PM") ),
        MyStruct(firstName: "Bird", lastName: "Butterfly", image: #imageLiteral(resourceName: "img7") ),
        MyStruct(firstName: "Bird", lastName: "Swarrow", image: #imageLiteral(resourceName: "img6") ),
        MyStruct(firstName: "food", lastName: "not known", image: #imageLiteral(resourceName: "food") ),
        MyStruct(firstName: "food", lastName: "not known", image: #imageLiteral(resourceName: "food2") ),
        
    ]
    
        @IBOutlet weak var tblView: UITableView!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib.init(nibName: "listTVC", bundle: nil)
        self.tblView.register(nib, forCellReuseIdentifier: "listTVC")


}
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "listTVC", for: indexPath) as! listTVC
        
        let dict = array[indexPath.row]
        
        cell.lblMain.text = dict.firstName
        cell.lblSmall.text = dict.lastName
        cell.imgMain.image = dict.image
        return cell
    }

}
