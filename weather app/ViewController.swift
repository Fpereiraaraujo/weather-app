//
//  ViewController.swift
//  weather app
//
//  Created by Fernando Pereira on 20/08/24.
//

import UIKit

class ViewController: UIViewController {
    private lazy var backgroundView: UIImageView = {
        let imageView  = UIImageView(frame: .zero)
        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView}()
    private lazy var headerview:UIView = {
        let view  = UIView(frame: .zero)
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        return view
    }()
    
    private lazy var cityLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "São Paulo"
        label.textColor = UIColor(named: "primaryColor")
        label.textAlignment = .center
        return label
    }()
    private lazy var temperatureLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 70,weight: .bold)
        label.text = "25ºC"
        label.textColor = UIColor(named: "primaryColor")
        label.textAlignment = .left
        return label
    }()
    private lazy var WheatterIcon:UIImageView = {
        let imageView = UIImageView()
        imageView.image=UIImage(named: "sun")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    private func setupView(){
        setHierarchy()
        setContraits()
        
    }
    private func setHierarchy(){
        
        view.addSubview(backgroundView)
        view.addSubview(headerview)
        
        headerview.addSubview(cityLabel)
        headerview.addSubview(temperatureLabel)
        headerview.addSubview(WheatterIcon)
        
    }
    
    private func setContraits(){
        NSLayoutConstraint.activate([backgroundView.topAnchor.constraint(equalTo: view.topAnchor ),backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                     
                                     backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                     backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor )])
        
        NSLayoutConstraint.activate([headerview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 60),
                                     headerview.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 35),headerview.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -35),
                                     headerview.heightAnchor.constraint(equalToConstant: 169)])
        
        NSLayoutConstraint.activate([
            cityLabel.topAnchor.constraint(equalTo: headerview.topAnchor, constant: 15),
            cityLabel.leadingAnchor.constraint(equalTo: headerview.leadingAnchor,constant: 15),
            cityLabel.trailingAnchor.constraint(equalTo: headerview.trailingAnchor, constant: -15),
            temperatureLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 21),
            temperatureLabel.leadingAnchor.constraint(equalTo: headerview.leadingAnchor, constant: 26),
            WheatterIcon.heightAnchor.constraint(equalToConstant: 86),
            WheatterIcon.widthAnchor.constraint(equalToConstant: 86),
            WheatterIcon.trailingAnchor.constraint(equalTo: headerview.trailingAnchor,constant: -26),
            WheatterIcon.centerYAnchor.constraint(equalTo: temperatureLabel.centerYAnchor),
            WheatterIcon.leadingAnchor.constraint(equalTo: temperatureLabel.trailingAnchor,constant: 15)
        ])
    }
    
    
}


