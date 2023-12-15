//
//  MapView.swift
//  MAPTEST
//
//  Created by Oscar Bruno on 12/14/23.
//

import Foundation
import SwiftUI
import UIKit
import TomTomSDKMapDisplay




class MapController: UIViewController{
    func initializer() -> MapView{
        print("INITIALIZING MAP")
        let apikey: String = "APIKEY GOES HERE"
        print("Key logged: ", apikey)
        MapsDisplayService.apiKey = apikey
        let mapview = MapView()
        
        print("Map built ;)")
        return mapview
    }
    
    func buildmap(builder: MapView, CurrentView: any View){
        print("Building :O")
        builder.addSubview(builder)
        
        builder.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            builder.leftAnchor.constraint(equalTo: builder.leftAnchor),
            builder.rightAnchor.constraint(equalTo: builder.rightAnchor),
            builder.topAnchor.constraint(equalTo: builder.topAnchor),
            builder.bottomAnchor.constraint(equalTo: builder.bottomAnchor),
        ])
        print("Map built?")
    } // end buildmapfunc
} // end class
    

//wrapper for map class to use in navlink destination
struct MapViewController: UIViewControllerRepresentable {
    typealias UIViewControllerType = MapController
    
    func makeUIViewController(context: Context) -> MapController {
        return MapController()
    }

    func updateUIViewController(_ uiViewController: MapController, context: Context) {
        // Update the view controller if needed
    }
}// end MVC
    
    

