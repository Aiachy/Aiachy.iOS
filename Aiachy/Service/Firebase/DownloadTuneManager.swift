//
//  DownloadTuneManager.swift
//  Aiachy
//
//  Created by Mert Türedü on 18.08.2023.
//

import Foundation
import FirebaseStorage

class DownloadTuneManager: ObservableObject {
    
    let storage = Storage.storage()
    
    func downloadTune(musicName: String) {
        let reference = storage.reference(forURL: "gs://azmanaiachy.appspot.com/Tune/\(musicName).mp3")
        
    }
    
}
