//
//  Countries.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 16/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import UIKit

class Countries{
    static let countriesArray = NSLocalizedString("Spain", comment:"") + "::" + "0034" + "," +
                           NSLocalizedString("United Kingdom", comment:"") + "::" + "0044" + "," +
                           NSLocalizedString("United States", comment:"") + "::" + "001" + "," +
                           NSLocalizedString("Japan", comment:"") + "::" + "0081" + "," +
                           NSLocalizedString("Canada", comment:"") + "::" + "001" + "," +
                           NSLocalizedString("China", comment:"") + "::" + "0086" + "," +
                           NSLocalizedString("France", comment:"") + "::" + "0033" + "," +
                           NSLocalizedString("Russia", comment:"") + "::" + "007" + "," +
                           NSLocalizedString("Germany", comment:"") + "::" + "0049" + "," +
                           NSLocalizedString("Afghanistan", comment:"") + "::" + "0093" + "," +
                           NSLocalizedString("Albania", comment:"") + "::" + "00355" + "," +
                           NSLocalizedString("Algeria", comment:"") + "::" + "00213" + "," +
                           NSLocalizedString("American Samoa", comment:"") + "::" + "001684" + "," +
                           NSLocalizedString("Andorra", comment:"") + "::" + "00376" + "," +
                           NSLocalizedString("Angola", comment:"") + "::" + "00244" + "," +
                           NSLocalizedString("Anguilla", comment:"") + "::" + "001264" + "," +
                           NSLocalizedString("Antigua and Barbuda", comment:"") + "::" + "001268" + "," +
                           NSLocalizedString("Argentina", comment:"") + "::" + "0054" + "," +
                           NSLocalizedString("Armenia", comment:"") + "::" + "00374" + "," +
                           NSLocalizedString("Aruba", comment:"") + "::" + "00297" + "," +
                           NSLocalizedString("Australia", comment:"") + "::" + "0061" + "," +
                           NSLocalizedString("Austria", comment:"") + "::" + "0043" + "," +
                           NSLocalizedString("Azerbaijan", comment:"") + "::" + "00994" + "," +
                           NSLocalizedString("Bahamas", comment:"") + "::" + "001242" + "," +
                           NSLocalizedString("Bahrain", comment:"") + "::" + "00973" + "," +
                           NSLocalizedString("Bangladesh", comment:"") + "::" + "00880" + "," +
                           NSLocalizedString("Barbados", comment:"") + "::" + "001246" + "," +
                           NSLocalizedString("Belarus", comment:"") + "::" + "00375" + "," +
                           NSLocalizedString("Belgium", comment:"") + "::" + "0032" + "," +
                           NSLocalizedString("Belize", comment:"") + "::" + "00501" + "," +
                           NSLocalizedString("Benin", comment:"") + "::" + "00229" + "," +
                           NSLocalizedString("Bermuda", comment:"") + "::" + "001441" + "," +
                           NSLocalizedString("Bhutan", comment:"") + "::" + "00975" + "," +
                           NSLocalizedString("Bolivia", comment:"") + "::" + "00591" + "," +
                           NSLocalizedString("Bosnia and Herzegovina", comment:"") + "::" + "00387" + "," +
                           NSLocalizedString("Botswana", comment:"") + "::" + "00267" + "," +
                           NSLocalizedString("Brazil", comment:"") + "::" + "0055" + "," +
                           NSLocalizedString("British Indian Ocean Territory", comment:"") + "::" + "00246" + "," +
                           NSLocalizedString("British Virgin Islands", comment:"") + "::" + "001284" + "," +
                           NSLocalizedString("Brunei", comment:"") + "::" + "00673" + "," +
                           NSLocalizedString("Bulgaria", comment:"") + "::" + "00359" + "," +
                           NSLocalizedString("Burkina Faso", comment:"") + "::" + "00226" + "," +
                           NSLocalizedString("Burundi", comment:"") + "::" + "00257" + "," +
                           NSLocalizedString("Cambodia", comment:"") + "::" + "00855" + "," +
                           NSLocalizedString("Cameroon", comment:"") + "::" + "00237" + "," +
                           NSLocalizedString("Cape Verde", comment:"") + "::" + "00238" + "," +
                           NSLocalizedString("Caribbean Netherlands", comment:"") + "::" + "00599" + "," +
                           NSLocalizedString("Cayman Islands", comment:"") + "::" + "001345" + "," +
                           NSLocalizedString("Central African Republic", comment:"") + "::" + "00236" + "," +
                           NSLocalizedString("Chad", comment:"") + "::" + "00235" + "," +
                           NSLocalizedString("Chile", comment:"") + "::" + "0056" + "," +
                           NSLocalizedString("Colombia", comment:"") + "::" + "0057" + "," +
                           NSLocalizedString("Comoros", comment:"") + "::" + "00269" + "," +
                           NSLocalizedString("Congo", comment:"") + "::" + "00243" + "," +
                           NSLocalizedString("Congo2", comment:"") + "::" + "00242" + "," +
                           NSLocalizedString("Cook Islands", comment:"") + "::" + "00682" + "," +
                           NSLocalizedString("Costa Rica", comment:"") + "::" + "00506" + "," +
                           NSLocalizedString("Côte d’Ivoire", comment:"") + "::" + "00225" + "," +
                           NSLocalizedString("Croatia", comment:"") + "::" + "00385" + "," +
                           NSLocalizedString("Cuba", comment:"") + "::" + "0053" + "," +
                           NSLocalizedString("Curaçao", comment:"") + "::" + "00599" + "," +
                           NSLocalizedString("Cyprus", comment:"") + "::" + "00357" + "," +
                           NSLocalizedString("Czech Republic", comment:"") + "::" + "00420" + "," +
                           NSLocalizedString("Denmark", comment:"") + "::" + "0045" + "," +
                           NSLocalizedString("Djibouti", comment:"") + "::" + "00253" + "," +
                           NSLocalizedString("Dominica", comment:"") + "::" + "001767" + "," +
                           NSLocalizedString("Dominican Republic", comment:"") + "::" + "001" + "," +
                           NSLocalizedString("Ecuador", comment:"") + "::" + "00593" + "," +
                           NSLocalizedString("Egypt", comment:"") + "::" + "0020" + "," +
                           NSLocalizedString("El Salvador", comment:"") + "::" + "00503" + "," +
                           NSLocalizedString("Equatorial Guinea", comment:"") + "::" + "00240" + "," +
                           NSLocalizedString("Eritrea", comment:"") + "::" + "00291" + "," +
                           NSLocalizedString("Estonia", comment:"") + "::" + "00372" + "," +
                           NSLocalizedString("Ethiopia", comment:"") + "::" + "00251" + "," +
                           NSLocalizedString("Falkland Islands", comment:"") + "::" + "00500" + "," +
                           NSLocalizedString("Faroe Islands", comment:"") + "::" + "00298" + "," +
                           NSLocalizedString("Fiji", comment:"") + "::" + "00679" + "," +
                           NSLocalizedString("Finland", comment:"") + "::" + "00358" + "," +
                           NSLocalizedString("French Guiana", comment:"") + "::" + "00594" + "," +
                           NSLocalizedString("French Polynesia", comment:"") + "::" + "00689" + "," +
                           NSLocalizedString("Gabon", comment:"") + "::" + "00241" + "," +
                           NSLocalizedString("Gambia", comment:"") + "::" + "00220" + "," +
                           NSLocalizedString("Georgia", comment:"") + "::" + "00995" + "," +
                           NSLocalizedString("Ghana", comment:"") + "::" + "00233" + "," +
                           NSLocalizedString("Gibraltar", comment:"") + "::" + "00350" + "," +
                           NSLocalizedString("Greece", comment:"") + "::" + "0030" + "," +
                           NSLocalizedString("Greenland", comment:"") + "::" + "00299" + "," +
                           NSLocalizedString("Grenada", comment:"") + "::" + "001473" + "," +
                           NSLocalizedString("Guadeloupe", comment:"") + "::" + "00590" + "," +
                           NSLocalizedString("Guam", comment:"") + "::" + "001671" + "," +
                           NSLocalizedString("Guatemala", comment:"") + "::" + "00502" + "," +
                           NSLocalizedString("Guernsey", comment:"") + "::" + "0044" + "," +
                           NSLocalizedString("Guinea", comment:"") + "::" + "00224" + "," +
                           NSLocalizedString("Guinea-Bissau", comment:"") + "::" + "00245" + "," +
                           NSLocalizedString("Guyana", comment:"") + "::" + "00592" + "," +
                           NSLocalizedString("Haiti", comment:"") + "::" + "00509" + "," +
                           NSLocalizedString("Honduras", comment:"") + "::" + "00504" + "," +
                           NSLocalizedString("Hong Kong", comment:"") + "::" + "00852" + "," +
                           NSLocalizedString("Hungary", comment:"") + "::" + "0036" + "," +
                           NSLocalizedString("Iceland", comment:"") + "::" + "00354" + "," +
                           NSLocalizedString("India", comment:"") + "::" + "0091" + "," +
                           NSLocalizedString("Indonesia", comment:"") + "::" + "0062" + "," +
                           NSLocalizedString("Iran", comment:"") + "::" + "0098" + "," +
                           NSLocalizedString("Iraq", comment:"") + "::" + "00964" + "," +
                           NSLocalizedString("Ireland", comment:"") + "::" + "00353" + "," +
                           NSLocalizedString("Isle of Man", comment:"") + "::" + "0044" + "," +
                           NSLocalizedString("Israel", comment:"") + "::" + "00972" + "," +
                           NSLocalizedString("Jamaica", comment:"") + "::" + "001876" + "," +
                           NSLocalizedString("Jersey", comment:"") + "::" + "0044" + "," +
                           NSLocalizedString("Jordan", comment:"") + "::" + "00962" + "," +
                           NSLocalizedString("Kazakhstan", comment:"") + "::" + "007" + "," +
                           NSLocalizedString("Kenya", comment:"") + "::" + "00254" + "," +
                           NSLocalizedString("Kiribati", comment:"") + "::" + "00686" + "," +
                           NSLocalizedString("Kuwait", comment:"") + "::" + "00965" + "," +
                           NSLocalizedString("Kyrgyzstan", comment:"") + "::" + "00996" + "," +
                           NSLocalizedString("Laos", comment:"") + "::" + "00856" + "," +
                           NSLocalizedString("Latvia", comment:"") + "::" + "00371" + "," +
                           NSLocalizedString("Lebanon", comment:"") + "::" + "00961" + "," +
                           NSLocalizedString("Lesotho", comment:"") + "::" + "00266" + "," +
                           NSLocalizedString("Liberia", comment:"") + "::" + "00231" + "," +
                           NSLocalizedString("Libya", comment:"") + "::" + "00218" + "," +
                           NSLocalizedString("Liechtenstein", comment:"") + "::" + "00423" + "," +
                           NSLocalizedString("Lithuania", comment:"") + "::" + "00370" + "," +
                           NSLocalizedString("Luxembourg", comment:"") + "::" + "00352" + "," +
                           NSLocalizedString("Macau", comment:"") + "::" + "00853" + "," +
                           NSLocalizedString("Macedonia", comment:"") + "::" + "00389" + "," +
                           NSLocalizedString("Madagascar", comment:"") + "::" + "00261" + "," +
                           NSLocalizedString("Malawi", comment:"") + "::" + "00265" + "," +
                           NSLocalizedString("Malaysia", comment:"") + "::" + "0060" + "," +
                           NSLocalizedString("Maldives", comment:"") + "::" + "00960" + "," +
                           NSLocalizedString("Mali", comment:"") + "::" + "00223" + "," +
                           NSLocalizedString("Malta", comment:"") + "::" + "00356" + "," +
                           NSLocalizedString("Marshall Islands", comment:"") + "::" + "00692" + "," +
                           NSLocalizedString("Martinique", comment:"") + "::" + "00596" + "," +
                           NSLocalizedString("Mauritania", comment:"") + "::" + "00222" + "," +
                           NSLocalizedString("Mauritius", comment:"") + "::" + "00230" + "," +
                           NSLocalizedString("Mayotte", comment:"") + "::" + "00262" + "," +
                           NSLocalizedString("Mexico", comment:"") + "::" + "0052" + "," +
                           NSLocalizedString("Micronesia", comment:"") + "::" + "00691" + "," +
                           NSLocalizedString("Moldova", comment:"") + "::" + "00373" + "," +
                           NSLocalizedString("Monaco", comment:"") + "::" + "00377" + "," +
                           NSLocalizedString("Mongolia", comment:"") + "::" + "00976" + "," +
                           NSLocalizedString("Montenegro", comment:"") + "::" + "00382" + "," +
                           NSLocalizedString("Montserrat", comment:"") + "::" + "001664" + "," +
                           NSLocalizedString("Morocco", comment:"") + "::" + "00212" + "," +
                           NSLocalizedString("Mozambique", comment:"") + "::" + "00258" + "," +
                           NSLocalizedString("Myanmar", comment:"") + "::" + "0095" + "," +
                           NSLocalizedString("Namibia", comment:"") + "::" + "00264" + "," +
                           NSLocalizedString("Nauru", comment:"") + "::" + "00674" + "," +
                           NSLocalizedString("Nepal", comment:"") + "::" + "00977" + "," +
                           NSLocalizedString("Netherlands", comment:"") + "::" + "0031" + "," +
                           NSLocalizedString("New Caledonia", comment:"") + "::" + "00687" + "," +
                           NSLocalizedString("New Zealand", comment:"") + "::" + "0064" + "," +
                           NSLocalizedString("Nicaragua", comment:"") + "::" + "00505" + "," +
                           NSLocalizedString("Niger", comment:"") + "::" + "00227" + "," +
                           NSLocalizedString("Nigeria", comment:"") + "::" + "00234" + "," +
                           NSLocalizedString("Niue", comment:"") + "::" + "00683" + "," +
                           NSLocalizedString("Norfolk Island", comment:"") + "::" + "00672" + "," +
                           NSLocalizedString("North Korea", comment:"") + "::" + "00850" + "," +
                           NSLocalizedString("Northern Mariana Islands", comment:"") + "::" + "001670" + "," +
                           NSLocalizedString("Norway", comment:"") + "::" + "0047" + "," +
                           NSLocalizedString("Oman", comment:"") + "::" + "00968" + "," +
                           NSLocalizedString("Pakistan", comment:"") + "::" + "0092" + "," +
                           NSLocalizedString("Palau", comment:"") + "::" + "00680" + "," +
                           NSLocalizedString("Palestine", comment:"") + "::" + "00970" + "," +
                           NSLocalizedString("Panama", comment:"") + "::" + "00507" + "," +
                           NSLocalizedString("Papua New Guinea", comment:"") + "::" + "00675" + "," +
                           NSLocalizedString("Paraguay", comment:"") + "::" + "00595" + "," +
                           NSLocalizedString("Peru", comment:"") + "::" + "0051" + "," +
                           NSLocalizedString("Philippines", comment:"") + "::" + "0063" + "," +
                           NSLocalizedString("Poland", comment:"") + "::" + "0048" + "," +
                           NSLocalizedString("Portugal", comment:"") + "::" + "00351" + "," +
                           NSLocalizedString("Puerto Rico", comment:"") + "::" + "001" + "," +
                           NSLocalizedString("Qatar", comment:"") + "::" + "00974" + "," +
                           NSLocalizedString("Réunion", comment:"") + "::" + "00262" + "," +
                           NSLocalizedString("Romania", comment:"") + "::" + "0040" + "," +
                           NSLocalizedString("Rwanda", comment:"") + "::" + "00250" + "," +
                           NSLocalizedString("Saint Barthélemy", comment:"") + "::" + "00590" + "," +
                           NSLocalizedString("Saint Helena", comment:"") + "::" + "00290" + "," +
                           NSLocalizedString("Saint Kitts and Nevis", comment:"") + "::" + "001869" + "," +
                           NSLocalizedString("Saint Lucia", comment:"") + "::" + "001758" + "," +
                           NSLocalizedString("Saint Martin", comment:"") + "::" + "00590" + "," +
                           NSLocalizedString("Saint Pierre and Miquelon", comment:"") + "::" + "00508" + "," +
                           NSLocalizedString("Saint Vincent and the Grenadines", comment:"") + "::" + "001784" + "," +
                           NSLocalizedString("Samoa", comment:"") + "::" + "00685" + "," +
                           NSLocalizedString("San Marino", comment:"") + "::" + "00378" + "," +
                           NSLocalizedString("São Tomé and Príncipe", comment:"") + "::" + "00239" + "," +
                           NSLocalizedString("Saudi Arabia", comment:"") + "::" + "00966" + "," +
                           NSLocalizedString("Senegal", comment:"") + "::" + "00221" + "," +
                           NSLocalizedString("Serbia", comment:"") + "::" + "00381" + "," +
                           NSLocalizedString("Seychelles", comment:"") + "::" + "00248" + "," +
                           NSLocalizedString("Sierra Leone", comment:"") + "::" + "00232" + "," +
                           NSLocalizedString("Singapore", comment:"") + "::" + "0065" + "," +
                           NSLocalizedString("Sint Maarten", comment:"") + "::" + "001721" + "," +
                           NSLocalizedString("Slovakia", comment:"") + "::" + "00421" + "," +
                           NSLocalizedString("Slovenia", comment:"") + "::" + "00386" + "," +
                           NSLocalizedString("Solomon Islands", comment:"") + "::" + "00677" + "," +
                           NSLocalizedString("Somalia", comment:"") + "::" + "00252" + "," +
                           NSLocalizedString("South Africa", comment:"") + "::" + "0027" + "," +
                           NSLocalizedString("South Korea", comment:"") + "::" + "0082" + "," +
                           NSLocalizedString("South Sudan", comment:"") + "::" + "00211" + "," +
                           NSLocalizedString("Sri Lanka", comment:"") + "::" + "0094" + "," +
                           NSLocalizedString("Sudan", comment:"") + "::" + "00249" + "," +
                           NSLocalizedString("Suriname", comment:"") + "::" + "00597" + "," +
                           NSLocalizedString("Swaziland", comment:"") + "::" + "00268" + "," +
                           NSLocalizedString("Sweden", comment:"") + "::" + "0046" + "," +
                           NSLocalizedString("Switzerland", comment:"") + "::" + "0041" + "," +
                           NSLocalizedString("Syria", comment:"") + "::" + "00963" + "," +
                           NSLocalizedString("Taiwan", comment:"") + "::" + "00886" + "," +
                           NSLocalizedString("Tajikistan", comment:"") + "::" + "00992" + "," +
                           NSLocalizedString("Tanzania", comment:"") + "::" + "00255" + "," +
                           NSLocalizedString("Thailand", comment:"") + "::" + "0066" + "," +
                           NSLocalizedString("Timor-Leste", comment:"") + "::" + "00670" + "," +
                           NSLocalizedString("Togo", comment:"") + "::" + "00228" + "," +
                           NSLocalizedString("Tokelau", comment:"") + "::" + "00690" + "," +
                           NSLocalizedString("Tonga", comment:"") + "::" + "00676" + "," +
                           NSLocalizedString("Trinidad and Tobago", comment:"") + "::" + "001868" + "," +
                           NSLocalizedString("Tunisia", comment:"") + "::" + "00216" + "," +
                           NSLocalizedString("Turkey", comment:"") + "::" + "0090" + "," +
                           NSLocalizedString("Turkmenistan", comment:"") + "::" + "00993" + "," +
                           NSLocalizedString("Turks and Caicos Islands", comment:"") + "::" + "001649" + "," +
                           NSLocalizedString("Tuvalu", comment:"") + "::" + "00688" + "," +
                           NSLocalizedString("U.S. Virgin Islands", comment:"") + "::" + "001340" + "," +
                           NSLocalizedString("Uganda", comment:"") + "::" + "00256" + "," +
                           NSLocalizedString("Ukraine", comment:"") + "::" + "00380" + "," +
                           NSLocalizedString("United Arab Emirates", comment:"") + "::" + "00971" + "," +
                           NSLocalizedString("Uruguay", comment:"") + "::" + "00598" + "," +
                           NSLocalizedString("Uzbekistan", comment:"") + "::" + "00998" + "," +
                           NSLocalizedString("Vanuatu", comment:"") + "::" + "00678" + "," +
                           NSLocalizedString("Vatican City", comment:"") + "::" + "0039" + "," +
                           NSLocalizedString("Venezuela", comment:"") + "::" + "0058" + "," +
                           NSLocalizedString("Vietnam", comment:"") + "::" + "0084" + "," +
                           NSLocalizedString("Wallis and Futuna", comment:"") + "::" + "00681" + "," +
                           NSLocalizedString("Western Sahara", comment:"") + "::" + "00212" + "," +
                           NSLocalizedString("Yemen", comment:"") + "::" + "00967" + "," +
                           NSLocalizedString("Zambia", comment:"") + "::" + "00260" + "," +
                           NSLocalizedString("Zimbabwe", comment:"") + "::" + "00263"
    
    //MARK: - Return ArrayCountries
    static func returnArrayCountries() -> [String]{
        return countriesArray.componentsSeparatedByString(",")
    }
}
