//
//  NavigationController.swift
//  DropDownMenuDemo
//
//  Created by Leo Ho on 2021/10/4.
//

import Foundation
import UIKit

extension UINavigationController {
    public func pushViewController(_ viewController: UIViewController, animated: Bool, completion: @escaping () -> Void) {
        pushViewController(viewController, animated: animated)
        guard animated, let coordinator = transitionCoordinator else {
            DispatchQueue.main.async { completion() }
            return
        }
        coordinator.animate(alongsideTransition: nil) { _ in completion() }
    }

    public func popViewController(animated: Bool, completion: @escaping () -> Void) {
        popViewController(animated: animated)
        guard animated, let coordinator = transitionCoordinator else {
            DispatchQueue.main.async { completion() }
            return
        }
        coordinator.animate(alongsideTransition: nil) { _ in completion() }
    }

    public func popToViewController(_ viewController: UIViewController, animated: Bool, completion: @escaping () -> Void) {
        popToViewController(viewController, animated: animated)
        guard animated, let coordinator = transitionCoordinator else {
            DispatchQueue.main.async { completion() }
            return
        }
        coordinator.animate(alongsideTransition: nil) { _ in completion() }
    }
}
