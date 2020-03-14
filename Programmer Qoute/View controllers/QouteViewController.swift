//
//  QouteViewController.swift
//  Programmer Qoute
//
//  Created by Nick Biever on 13/03/2020.
//  Copyright © 2020 Nick Biever. All rights reserved.
//

import UIKit

class QouteViewController: UIViewController {

    private let qouteView = QouteView()
    
    private let qouteModel = Qoute()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view = qouteView

        getQoute()
        
        qouteView.newQouteButton.addTarget(self, action: #selector(getNewQoute), for: .touchUpInside)
    }
    
    private func decodeJSON(url: String, completion: @escaping ([String: Any]?, Error?) -> Void) {
        URLSession.shared.dataTask(with: URL(string: url)!) { (data, response, error) in
            guard let data = data else { return }

            do {
                if let array = try JSONSerialization.jsonObject(with: data) as? [String:Any] {
                    completion(array, nil)
                }
            } catch {
                print(error)
                completion(nil, error)
            }
        }.resume()
    }
    
    private func getQoute() {
        decodeJSON(url: "https://programming-quotes-api.herokuapp.com/quotes/random") { (dict, error) in
            self.qouteModel.qoute = dict!["en"] as! String
            self.qouteModel.author = dict!["author"] as! String
            
            self.updateUI()
        }
    }
    
    private func updateUI() {
        DispatchQueue.main.async {
            self.qouteView.qouteLabel.text = self.qouteModel.qoute
            self.qouteView.authorLabel.text = "~ " + self.qouteModel.author
        }
    }
    
    @objc private func getNewQoute() {
        getQoute()
    }
}
