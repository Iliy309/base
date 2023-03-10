//
//  AppDelegate.swift
//  UiNavigationViewController
//
//  Created by Macbook pro on 07/11/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
// MARK: - Создаем window  и controller
    var window: UIWindow?
    var navController = UINavigationController() 

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // MARK: -Присваеваем имя
        let viewController = ViewController()
        // MARK: -Устанавливаем рут права выбранному контроллеру
        self.navController = UINavigationController(rootViewController: viewController)
        // MARK: -Устанавливаем рамки окна такие же, как и рамки тачскрина
        self.window = UIWindow(frame: UIScreen.main.bounds)
        // MARK: -Говорим что у рут контроллера окна и нашего равные права
        self.window?.rootViewController = self.navController
        //MARK: -Окно по умолчанию не имеет цвета, поэтому устанавливаем цвет
        self.window?.backgroundColor = .black
        //MARK: -Устанавливаем главный экран окна
        self.window?.makeKeyAndVisible()
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

