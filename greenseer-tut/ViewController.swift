//
//  ViewController.swift
//  greenseer-tut
//
//  Created by Madhav Jha on 11/18/18.
//  Copyright © 2018 Madhav Jha. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guard let captureDevice = AVCaptureDevice.default(for: .video) else {return}
        guard let input = try? AVCaptureDeviceInput(device: captureDevice) else {return}
        
        let captureSession = AVCaptureSession()
        
        captureSession.sessionPreset = .photo   // optional
        
        captureSession.addInput(input)
        captureSession.startRunning()
        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        view.layer.addSublayer(previewLayer)
        previewLayer.frame = view.frame
        
    }


}

