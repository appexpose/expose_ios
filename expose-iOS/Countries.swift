//
//  Countries.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 16/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import UIKit

class Countries{
    let countriesArray = ["Spain" : "0034",
                          "United Kingdom" : "0044",
                          "United States" : "001",
                          "Japan" : "0081",
                          "Canada" : "001",
                          "China" : "0086",
                          "France" : "0033",
                          "Russia" : "007",
                          "Germany" : "0049",
                          "Afghanistan" : "0093",
                          "Albania" : "00355",
                          "Algeria" : "00213",
                          "American Samoa" : "001684",
                          "Andorra" : "00376",
                          "Angola" : "00244",
                          "Anguilla" : "001264",
                          "Antigua and Barbuda" : "001268",
                          "Argentina" : "0054",
                          "Armenia" : "00374",
                          "Aruba" : "00297",
                          "Australia": "0061",
                          "Austria" : "0043",
                          "Azerbaijan" : "00994",
                          "Bahamas" : "001242",
                          "Bahrain" : "00973",
                          "Bangladesh" : "00880",
                          "Barbados" : "001246",
                          "Belarus" : "00375",
                          "Belgium" : "0032",
                          "Belize" : "00501",
                          "Benin" : "00229",
                          "Bermuda" : "001441",
                          "Bhutan" : "00975",
                          "Bolivia" : "00591",
                          "Bosnia and Herzegovina" : "00387",
                          "Botswana" : "00267",
                          "Brazil" : "0055",
                          "British Indian Ocean Territory" : "00246",
                          "British Virgin Islands" : "001284",
                          "Brunei" : "00673",
                          "Bulgaria" : "00359",
                          "Burkina Faso" : "00226",
                          "Burundi" : "00257",
                          "Cambodia" : "00855",
                          "Cameroon" : "00237",
                          "Cape Verde" : "00238",
                          "Caribbean Netherlands" : "00599",
                          "Cayman Islands" : "001345",
                          "Central African Republic" : "00236",
                          "Chad" : "00235",
                          "Chile" : "0056",
                          "Colombia" : "0057",
                          "Comoros" : "00269",
                          "Congo" : "00243",
                          "Congo2" : "00242",
                          "Cook Islands" : "00682",
                          "Costa Rica" : "00506",
                          "Côte d’Ivoire" : "00225",
                          "Croatia" : "00385",
                          "Cuba" : "0053",
                          "Curaçao" : "00599",
                          "Cyprus" : "00357",
                          "Czech Republic" : "00420",
                          "Denmark" : "0045",
                          "Djibouti" : "00253",
                          "Dominica" : "001767",
                          "Dominican Republic" : "001",
                          "Ecuador" : "00593",
                          "Egypt" : "0020",
                          "El Salvador" : "00503",
                          "Equatorial Guinea" : "00240",
                          "Eritrea" : "00291",
                          "Estonia" : "00372",
                          "Ethiopia" : "00251",
                          "Falkland Islands" : "00500",
                          "Faroe Islands" : "00298",
                          "Fiji" : "00679",
                          "Finland" : "00358",
                          "French Guiana" : "00594",
                          "French Polynesia" : "00689",
                          "Gabon" : "00241",
                          "Gambia" : "00220",
                          "Georgia" : "00995",
                          "Ghana" : "00233",
                          "Gibraltar" : "00350",
                          "Greece" : "0030",
                          "Greenland" : "00299",
                          "Grenada" : "001473",
                          "Guadeloupe" : "00590",
                          "Guam" : "001671",
                          "Guatemala" : "00502",
                          "Guernsey" : "0044",
                          "Guinea" : "00224",
                          "Guinea-Bissau" : "00245",
                          "Guyana" : "00592",
                          "Haiti" : "00509",
                          "Honduras" : "00504",
                          "Hong Kong" : "00852",
                          "Hungary" : "0036",
                          "Iceland" : "00354",
                          "India" : "0091",
                          "Indonesia" : "0062",
                          "Iran" : "0098",
                          "Iraq" : "00964",
                          "Ireland" : "00353",
                          "Isle of Man" : "0044",
                          "Israel" : "00972",
                          "Italy" : "0039",
                          "Jamaica" : "001876",
                          "Jersey" : "0044",
                          "Jordan" : "00962",
                          "Kazakhstan" : "007",
                          "Kenya" : "00254",
                          "Kiribati" : "00686",
                          "Kuwait" : "00965",
                          "Kyrgyzstan" : "00996",
                          "Laos" : "00856",
                          "Latvia" : "00371",
                          "Lebanon" : "00961",
                          "Lesotho" : "00266",
                          "Liberia" : "00231",
                          "Libya" : "00218",
                          "Liechtenstein" : "00423",
                          "Lithuania" : "00370",
                          "Luxembourg" : "00352",
                          "Macau" : "00853",
                          "Macedonia" : "00389",
                          "Madagascar" : "00261",
                          "Malawi" : "00265",
                          "Malaysia" : "0060",
                          "Maldives" : "00960",
                          "Mali" : "00223",
                          "Malta" : "00356",
                          "Marshall Islands" : "00692",
                          "Martinique" : "00596",
                          "Mauritania" : "00222",
                          "Mauritius" : "00230",
                          "Mayotte" : "00262",
                          "Mexico" : "0052",
                          "Micronesia" : "00691",
                          "Moldova" : "00373",
                          "Monaco" : "00377",
                          "Mongolia" : "00976",
                          "Montenegro" : "00382",
                          "Montserrat" : "001664",
                          "Morocco" : "00212",
                          "Mozambique" : "00258",
                          "Myanmar" : "0095",
                          "Namibia" : "00264",
                          "Nauru" : "00674",
                          "Nepal" : "00977",
                          "Netherlands" : "0031",
                          "New Caledonia" : "00687",
                          "New Zealand" : "0064",
                          "Nicaragua" : "00505",
                          "Niger" : "00227",
                          "Nigeria" : "00234",
                          "Niue" : "00683",
                          "Norfolk Island" : "00672",
                          "North Korea" : "00850",
                          "Northern Mariana Islands" : "001670",
                          "Norway" : "0047",
                          "Oman" : "00968",
                          "Pakistan" : "0092",
                          "Palau" : "00680",
                          "Palestine" : "00970",
                          "Panama" : "00507",
                          "Papua New Guinea" : "00675",
                          "Paraguay" : "00595",
                          "Peru" : "0051",
                          "Philippines" : "0063",
                          "Poland" : "0048",
                          "Portugal" : "00351",
                          "Puerto Rico" : "001",
                          "Qatar" : "00974",
                          "Réunion" : "00262",
                          "Romania" : "0040",
                          "Rwanda" : "00250",
                          "Saint Barthélemy" : "00590",
                          "Saint Helena" : "00290",
                          "Saint Kitts and Nevis" : "001869",
                          "Saint Lucia" : "001758",
                          "Saint Martin" : "00590",
                          "Saint Pierre and Miquelon" : "00508",
                          "Saint Vincent and the Grenadines" : "001784",
                          "Samoa" : "00685",
                          "San Marino" : "00378",
                          "São Tomé and Príncipe" : "00239",
                          "Saudi Arabia" : "00966",
                          "Senegal" : "00221",
                          "Serbia" : "00381",
                          "Seychelles" : "00248",
                          "Sierra Leone" : "00232",
                          "Singapore" : "0065",
                          "Sint Maarten" : "001721",
                          "Slovakia" : "00421",
                          "Slovenia" : "00386",
                          "Solomon Islands" : "00677",
                          "Somalia" : "00252",
                          "South Africa" : "0027",
                          "South Korea" : "0082",
                          "South Sudan" : "00211",
                          "Sri Lanka" : "0094",
                          "Sudan" : "00249",
                          "Suriname" : "00597",
                          "Swaziland" : "00268",
                          "Sweden" : "0046",
                          "Switzerland" : "0041",
                          "Syria" : "00963",
                          "Taiwan" : "00886",
                          "Tajikistan" : "00992",
                          "Tanzania" : "00255",
                          "Thailand" : "0066",
                          "Timor-Leste" : "00670",
                          "Togo" : "00228",
                          "Tokelau" : "00690",
                          "Tonga" : "00676",
                          "Trinidad and Tobago" : "001868",
                          "Tunisia" : "00216",
                          "Turkey" : "0090",
                          "Turkmenistan" : "00993",
                          "Turks and Caicos Islands" : "001649",
                          "Tuvalu" : "00688",
                          "U.S. Virgin Islands" : "001340",
                          "Uganda" : "00256",
                          "Ukraine" : "00380",
                          "United Arab Emirates" : "00971",
                          "Uruguay" : "00598",
                          "Uzbekistan" : "00998",
                          "Vanuatu" : "00678",
                          "Vatican City" : "0039",
                          "Venezuela" : "0058",
                          "Vietnam" : "0084",
                          "Wallis and Futuna" : "00681",
                          "Western Sahara" : "00212",
                          "Yemen" : "00967",
                          "Zambia" : "00260",
                          "Zimbabwe" : "00263"]
}
