//
//  SelectCountryViewController.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 16/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import UIKit

class SelectCountryViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {
    
    //MARK: - Variables
    let countriesArray = Countries.returnArrayCountries()
    let countryCellIdentifier = "countryCellIdentifier"
    
    //MARK: - Outlets
    @IBOutlet weak var myTable: UITableView!
    
    //MARK: - LifeCycle
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countriesArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(countryCellIdentifier) as! CountryTableViewCell
        let country = countriesArray[indexPath.row].componentsSeparatedByString("::")
        let countryName = NSMutableAttributedString(string: country.first!, attributes: [NSFontAttributeName: UIFont.boldSystemFontOfSize(17)])
        let codeCountry = NSMutableAttributedString(string: " (" + country.last! + ")", attributes: [ NSForegroundColorAttributeName: UIColor.lightGrayColor()])
        let composedCountryName = NSMutableAttributedString()
        composedCountryName.appendAttributedString(countryName)
        composedCountryName.appendAttributedString(codeCountry)
        cell.contryLabel.attributedText = composedCountryName
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let country = countriesArray[indexPath.row].componentsSeparatedByString("::")
        print(country.last!)
    }
}
