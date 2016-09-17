//
//  GeneralPreferenceManager.swift
//  12306ForMac
//
//  Created by fancymax on 16/8/10.
//  Copyright © 2016年 fancy. All rights reserved.
//

import Foundation

class GeneralPreferenceManager {
    
    static let sharedInstance = GeneralPreferenceManager()
    
    private let autoQuerySecondsKey = "autoQuerySeconds"
    private let isShowInvalidTicketKey = "isShowInvalidTicket"
    private let isShowNoTrainTicketKey = "isShowNoTrainTicket"
    
    private let userDefaults = NSUserDefaults.standardUserDefaults()
    
    private init()
    {
        registerUserDefault()
    }
    
    private func registerUserDefault()
    {
        let firstDefault = [autoQuerySecondsKey: 5,isShowInvalidTicketKey: true, isShowNoTrainTicketKey:true]
        userDefaults.registerDefaults(firstDefault)
    }
    
    var autoQuerySeconds:Int {
        get{
            return userDefaults.objectForKey(autoQuerySecondsKey) as! Int
        }
        set{
            userDefaults.setObject(newValue, forKey: autoQuerySecondsKey)
        }
    }
    
    var isShowInvalidTicket:Bool {
        get{
            return userDefaults.objectForKey(isShowInvalidTicketKey) as! Bool
        }
        set{
            userDefaults.setObject(newValue, forKey: isShowInvalidTicketKey)
        }
    }
    
    var isShowNoTrainTicket:Bool {
        get{
            return userDefaults.objectForKey(isShowNoTrainTicketKey) as! Bool
        }
        set{
            userDefaults.setObject(newValue, forKey: isShowNoTrainTicketKey)
        }
    }
    
}