//
//  ViewController.swift
//  metalNsCoders
//
//  Created by Juan Carlos Ricalde Poveda on 23/01/15.
//  Copyright (c) 2015 jucaripo. All rights reserved.
//

import UIKit

// Se requiere de la libreria  SceneKit para poder trabajar con Metal.
import SceneKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Codigo para trabajar con Metal
        
        // Crear objeto vista
        let sceneView = SCNView( frame: view.frame)
       
        
        
        
        // Crear escena
        let scene = SCNScene()
        // asignar escena a la vista
        sceneView.scene = scene
        
        // configurar Luces , camara y estadisticas
        sceneView.autoenablesDefaultLighting = true
        sceneView.allowsCameraControl = true
        sceneView.showsStatistics = true
        
        // crear cajita
        let box = SCNBox(width: 10, height: 10, length: 10, chamferRadius: 0)
        
        // asignar nodo a escena
        let boxNode = SCNNode(geometry: box)
        boxNode.position = SCNVector3(x: 250, y: 150, z: 460)
        scene.rootNode.addChildNode(boxNode)
        
        
        // luces 
        let light = SCNLight()
        light.color = UIColor.redColor()
        let lightNode = SCNNode()
        lightNode.light = light
        // posicion de la lampara
        lightNode.position = SCNVector3(x: -30, y: 30, z: 60)
        // agregamos el nodo de luz a la escena
        scene.rootNode.addChildNode(lightNode)
        
        
        // mostrar la vista en el dispositivo
        view.addSubview(sceneView)
        
        
        
    }




}

