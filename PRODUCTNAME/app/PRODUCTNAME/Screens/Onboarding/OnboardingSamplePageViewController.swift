//
//  OnboardingSamplePageViewController.swift
//  PRODUCTNAME
//
//  Created by LEADDEVELOPER on 3/29/17.
//  Copyright © 2017 ORGANIZATION. All rights reserved.
//

import Anchorage

class OnboardingSamplePageViewController: UIViewController {

    let imageView = UIImageView()

    let headerLabel: UILabel = {
        let label = UILabel()
        label.bonMotStyle = .title1
        label.bonMotStyle?.color = Color.darkGray
        label.textAlignment = .center
        return label
    }()

    let bodyLabel: UILabel = {
        let label = UILabel()
        label.bonMotStyle = .title3
        label.bonMotStyle?.color = Color.darkGray
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()

    init() {
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable) required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureLayout()
    }

}

private extension OnboardingSamplePageViewController {

    func configureView() {
        view.addSubview(imageView)
        view.addSubview(headerLabel)
        view.addSubview(bodyLabel)
    }

    struct Layout {
        static let sideInsets = CGFloat(38)
        static let imageTopSpace = CGFloat(42)
        static let bodyBottomSpace = CGFloat(40)
        static let headerBottomSpace = CGFloat(20)
    }

    func configureLayout() {
        imageView.topAnchor == view.topAnchor + Layout.imageTopSpace
        imageView.centerXAnchor == view.centerXAnchor

        bodyLabel.horizontalAnchors == view.horizontalAnchors + Layout.sideInsets
        bodyLabel.bottomAnchor == view.bottomAnchor - Layout.bodyBottomSpace

        headerLabel.horizontalAnchors == view.horizontalAnchors
        headerLabel.bottomAnchor == bodyLabel.topAnchor - Layout.headerBottomSpace
    }

}
