//
//  ViewController.swift
//  SDTiPView
//
//  Created by Sachin Daingade on 20/09/20.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    let arrayOfDaya = ["a","b","c","d","e","f","g"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfDaya.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        
        cell?.textLabel?.text = "Mr. \(arrayOfDaya[indexPath.row].capitalized)"
        let vm = """
        वन्दे मातरम्
        सुजलां सुफलाम्
        मलयजशीतलाम्
        शस्यशामलाम्
        मातरम्।
        वन्दे मातरम्
        शुभ्रज्योत्स्नापुलकितयामिनीम्
        फुल्लकुसुमितद्रुमदलशोभिनीम्
        सुहासिनीं सुमधुर भाषिणीम्
        सुखदां वरदां मातरम्।
        वन्दे मातरम्।
        कोटि-कण्ठ-कल-कल-निनाद-कराले
        कोटि-भुजैर्धृत-खरकरवाले,
        अबला केन मा एत बले।
        बहुबलधारिणीं नमामि तारिणीं
        रिपुदलवारिणीं मातरम्।
        वन्दे मातरम्।
        """
        cell?.createAccessoryViewWithTipView(title: vm)
        
        return cell!
    }
    
    
    

}

