// ZZScale.swift
// Author: Chen Shenghan
// Github: https://github.com/zzdjk6/ZZScale

import UIKit

public extension UIView {
    
    // MARK: - Static Helper
    
    public static func scaleFactor(relativeByWidth designWidth: CGFloat) -> CGFloat {
        guard designWidth > 0 else {
            return 0
        }
        
        let screenBounds = UIScreen.mainScreen().bounds
        let screenWidth = screenBounds.width
        
        let factor = screenWidth / designWidth
        return factor
    }
    
    public static func scaleFactor(relativeByHeight designHeight: CGFloat) -> CGFloat {
        guard designHeight > 0 else {
            return 0
        }
        
        let screenBounds = UIScreen.mainScreen().bounds
        let screenHeight = screenBounds.height
        
        let factor = screenHeight / designHeight
        return factor
    }
    
    public static func scaleInFactor(view: UIView, relativeByWidth designWidth: CGFloat) {
        guard designWidth > 0 else {
            return
        }
        
        let factor = UIView.zz_scaleFactorRelativeByWidth(designWidth)
        view.transform = CGAffineTransformMakeScale(factor, factor)
        
        view.frame.origin = CGPointZero
    }
    
    public static func scaleInFactor(view: UIView, relativeByHeight designHeight: CGFloat) {
        guard designHeight > 0 else {
            return
        }
        
        let factor = UIView.zz_scaleFactorRelativeByHeight(designHeight)
        view.transform = CGAffineTransformMakeScale(factor, factor)
        
        view.frame.origin = CGPointZero
    }
    
    public static func zz_scaleFactorRelativeByWidth(designWidth: CGFloat) -> CGFloat {
        return scaleFactor(relativeByWidth: designWidth)
    }
    
    public static func zz_scaleFactorRelativeByHeight(designHeight: CGFloat) -> CGFloat {
        return scaleFactor(relativeByHeight: designHeight)
    }
    
    // MARK: - Instance Method
    
    public func zz_scaleInFactorRelativeByWidth(designWidth: CGFloat) {
        UIView.scaleInFactor(self, relativeByWidth: designWidth)
    }
    
    public func zz_scaleInFactorRelativeByHeight(designHeight: CGFloat) {
        UIView.scaleInFactor(self, relativeByHeight: designHeight)
    }
    
    // iPhone5/5S width
    public func zz_scaleInFactorRelativeByWidth320() {
        self.zz_scaleInFactorRelativeByWidth(320)
    }
    
    // iPhone6/6S width
    public func zz_scaleInFactorRelativeByWidth375() {
        self.zz_scaleInFactorRelativeByWidth(375)
    }
    
    // iPhone6+/6S+ width
    public func zz_scaleInFactorRelativeByWidth414() {
        self.zz_scaleInFactorRelativeByWidth(414)
    }
    
    // iPhone4/4S height
    public func zz_scaleInFactorRelativeByHeight480() {
        self.zz_scaleInFactorRelativeByHeight(480)
    }
    
    // iPhone5/5S height
    public func zz_scaleInFactorRelativeByHeight568() {
        self.zz_scaleInFactorRelativeByHeight(568)
    }
    
    // iPhone6/6S height
    public func zz_scaleInFactorRelativeByHeight667() {
        self.zz_scaleInFactorRelativeByHeight(667)
    }
    
    // iPhone6+/6S+ height
    public func zz_scaleInFactorRelativeByHeight736() {
        self.zz_scaleInFactorRelativeByHeight(736)
    }
}