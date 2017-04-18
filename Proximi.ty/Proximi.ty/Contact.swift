//
//  Contact.swift
//  Proximi.ty
//
//  Created by Eric Yu on 4/18/17.
//  Copyright © 2017 ericYu. All rights reserved.
//

import UIKit

class Contact: NSObject {
    var name: String
    var phoneNumber: String
    var dateOfLastContact: String
    
    init? (name: String, phoneNumber: String, dateOfLastContact: String) {
        //Initialization should fail if name is empty
        if(name.isEmpty) {
            return nil
        }
        
        self.name = name
        self.phoneNumber = phoneNumber
        self.dateOfLastContact = dateOfLastContact
    }
}
