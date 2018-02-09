//
//  TestViewController.swift
//  anothertest
//
//  Created by Ying Quan Tan on 2/6/18.
//

import UIKit

class TestViewController: UIViewController {


    var appAdapter: AppAdapter?

    @IBOutlet var button: UIButton!

    @IBAction func buttonTapped(_ sender: Any) {
        print("here")
        appAdapter?.saySomething()
    }

    @objc func setButton(text: String) {
        button?.setTitle(text, for: .normal)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = UIColor(white: 0, alpha: 0)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

class ControlView: UIView {
//    weak var controller: ControlsViewController?
//
//    var touch: UITouch?
//
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        guard let controller = controller else { return }
//        controller.handleTouch()
//    }

    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {


        let view = super.hitTest(point, with: event)
        if view == self {
            return nil
        } else {
            return view
        }
//        guard let view = super.hitTest(point, with: event) else { return nil }
//        guard let controller = controller else { return nil }
//
//        if self == view && controller.shouldHandleTouch()  {
//            return view
//        } else if view.isDescendant(of: self) {
//            return view
//        } else {
//            return nil
//        }
    }
}
