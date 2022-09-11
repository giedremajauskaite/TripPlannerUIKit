//
//  DetailsScreenViewController.swift
//  TripPlannerUIKit
//
//  Created by Giedre Majauskaite on 11/09/2022.
//

import UIKit
import SwiftUI

class DetailsScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Function calling SWiftUI View
        addDetailsView()
        
    }

}

// SwiftUi View (same in SWiftUI project)
struct DetailsScreenView: View {
    var body: some View {
        Text("US Open tournament")
            .font(.largeTitle)
            .padding()
        Image("Throphy")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}

struct DetailsScreenView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsScreenView()
    }
}

private extension UIViewController {
    func addDetailsView() {
        let detailsView = DetailsScreenView()
        let controller = UIHostingController(rootView: detailsView)
        addChild(controller)
        controller.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(controller.view)
//        controller.didMove(toParent: self)
        
        NSLayoutConstraint.activate([
            controller.view.widthAnchor.constraint(equalTo: view.widthAnchor),
            controller.view.heightAnchor.constraint(equalTo: view.heightAnchor),
            controller.view.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            controller.view.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
}
