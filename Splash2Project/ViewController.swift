//
//  ViewController.swift
//  Splash2Project
//
//  Created by yonekan on 2019/12/03.
//  Copyright © 2019 yonekan. All rights reserved.
//

import UIKit
import RevealingSplashView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // スプラッシュ画面作成
        let revealingSplashView = RevealingSplashView(
            iconImage: UIImage(named: "line")!,
            iconInitialSize: CGSize(width: 170, height: 170),
            backgroundColor: .green)
        
        // アニメーションの変更
        revealingSplashView.animationType = .popAndZoomOut
        
        // スプラッシュ画面を表示
        self.view.addSubview(revealingSplashView)
        
        // スプラッシュのアニメーション開始
        revealingSplashView.startAnimation {
            print("アニメーション完了")
        }
    }


}

