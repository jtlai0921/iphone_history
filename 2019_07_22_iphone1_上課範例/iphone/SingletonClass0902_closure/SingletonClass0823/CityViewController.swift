//
//  CityViewController.swift
//  SingletonClass0826
//
//  Created by Robert on 2019/8/26.
//  Copyright © 2019 ios1. All rights reserved.
//

import UIKit
import WebKit

class CityViewController: UIViewController {
    var city:City!;
    @IBOutlet var webView:WKWebView!;
    @IBOutlet var indicateorView:UIActivityIndicatorView!;
    /*
    override func awakeFromNib() {
        super.awakeFromNib();
        print("awakFromNib:\(webView?.description)")
    }
 */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = city.cityName;
        webView.navigationDelegate = self;
        if let url = URL(string: city.url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!){
            let urlRequest = URLRequest(url: url)
            let _ = webView.load(urlRequest)
        }else{
            
            print("url出錯了:\(city.url)");
        }
    }
    

    

}

extension CityViewController:WKNavigationDelegate{
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!){
        indicateorView.stopAnimating()
    }
}
