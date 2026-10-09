//
//  SceneDelegate.swift
//  Kitaplik
//
//  Created by CORSPAR on 8.10.2026.
//

import UIKit

// iOS scene oluşturuyor. Normalde Storyboard'da arkada bir window kurup içine koyuyordu.
// Şimdi Storyboard olmadığı için scene içerisine window'u benim koymam gerekiyor.

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    // iOS app açılıp, sahne hazır olduğunda bu func'u çalıştırır.
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        //Gelen sahne bir window mu? değilse return.
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // Önce bir adet window oluşturuyorum.
        let window = UIWindow(windowScene: windowScene)
        
        // Sonra bu window içine bir adet ViewController koyacağım, şuanda boş bir window.
        let viewController = ViewController()
        window.rootViewController = viewController
        
        // En son window'u ana window yapıp, görünür hale getiriyoruz.
        window.makeKeyAndVisible()
        self.window = window // Oluşturduğumuz window'u -> SceneDelegate'nin window property'sine atıyoruz.
    }

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }


}

