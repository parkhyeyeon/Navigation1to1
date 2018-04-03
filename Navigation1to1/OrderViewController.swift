//
//  OrderViewController.swift
//  Navigation1to1
//
//  Created by SWUCOMPUTER on 2018. 4. 3..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    
    var info: String?
    //info는 상위뷰에서 넘어오는 변수이므로
    //?을 붙여서 옵셔널 타입으로 만들고, 값이 혹시 전달되지 않더라도 에러 안뜨도록 함
    
    
    //뷰가 뜨기 전에, xcode는 다음의 함수 안에 있는 작업을 먼저 한다
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let contentString = info {
            infoLabel.text = contentString
        }
        //info로 넘어오는 값이 널일 수도 있으므로
        //이를 if let에서 한번 걸러준다 (옵셔널 바인딩)
        //널이 아니면 값을 할당하도록 위과 같이 코드를 짠 것 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
