

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var dataTblView: UITableView!
    var dataArr = [("Rose","Tiger","Dog","Cat"),("Sunflower","Lion","Rat","Root"),("Yamini","Bear","Lepord","Monkey"),("Lotus","Deer","Black Rose","Wolf")]
    
    var headerArr = ["Animals","Flowers","Another","For-Cast"]
    var selectedArr = NSMutableArray()
    var indexArr = NSMutableArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return headerArr.count
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = dataTblView.dequeueReusableCell(withIdentifier: "DataTVC") as! DataTVC
        headerView.lblTitle.textColor = UIColor.black
        headerView.lblTitle.layer.borderColor = UIColor.black.cgColor
        headerView.lblTitle.font = UIFont(name: "cochin", size: 30)
        headerView.lblTitle.text = headerArr[section]
        return headerView
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dataTblView.dequeueReusableCell(withIdentifier: "NewTVC") as! NewTVC
        if indexPath.section == 0 {
            cell.btnLbl.text = dataArr[indexPath.row].0
        }
        else if indexPath.section == 1 {
            cell.btnLbl.text = dataArr[indexPath.row].1
        }
        else if indexPath.section == 2 {
            cell.btnLbl.text = dataArr[indexPath.row].2
        }
        else {
            cell.btnLbl.text = dataArr[indexPath.row].3
        }
//        if selectedArr.contains(indexPath.row){
//            cell.btnAction.setImage(UIImage(named: "Click"), for: .normal)
//        }
//        else{
//            cell.btnAction.setImage(UIImage(named: "Uncheck"), for: .normal)
//        }
//
        for i in 0..<selectedArr.count{
            let val = selectedArr[i] as! Int
        let section = val/10000
            let row = val%10000
            print("section",section)
            print("row",row)
            if section == 0 {
                cell.btnLbl.text = dataArr[indexPath.row].0
            }
            else if section == 1 {
                cell.btnLbl.text = dataArr[indexPath.row].1
            }
            else if section == 2 {
                cell.btnLbl.text = dataArr[indexPath.row].2
            }
            else {
                cell.btnLbl.text = dataArr[indexPath.row].3
            }
        }
        
        if selectedArr.contains(10000*indexPath.section+indexPath.row){
                cell.btnAction.setImage(UIImage(named: "Click"), for: .normal)
            }
            else{
                cell.btnAction.setImage(UIImage(named: "Uncheck"), for: .normal)
            }
        
        
        
        
        cell.btnAction.tag = 10000*indexPath.section+indexPath.row
        cell.btnAction.addTarget(self, action: #selector(addValueToArr(_:)), for: .touchUpInside)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    @objc func addValueToArr(_ sender: UIButton){
        if selectedArr.contains(sender.tag){
            selectedArr.remove(sender.tag)
        } else {
            selectedArr.add(sender.tag)
        }
        dataTblView.reloadData()
    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("selectedArr",selectedArr)
    
//        if selectedArr.contains(indexPath.row){
//
//            selectedArr.remove(indexPath.row)
//        } else {
//            selectedArr.add(indexPath.row)
//        }
        
        
        //        if indexPath.section == 1{
        //        if indexArr.contains(indexPath.row){
        //            indexArr.remove(indexPath.row)
        //        }
        //        else{
        //            indexArr.add(indexPath.row)
        //        }
        //        }
//        dataTblView.reloadData()
//    }
    
}
