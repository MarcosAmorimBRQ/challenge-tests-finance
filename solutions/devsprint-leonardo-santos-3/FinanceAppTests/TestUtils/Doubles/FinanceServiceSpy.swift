//
//  FinanceServiceSpy.swift
//  FinanceAppTests
//
//  Created by Bruno Silva on 28/09/22.
//

@testable import FinanceApp

import UIKit

final class FinanceServiceActivityDetailsSpy: FinanceServiceActivityDetailsProtocol {
    
    // MARK: Private Properties
    
    private(set) var fetchActivityDetailsCalled: Bool = false
    private(set) var fetchActivityDetailsCallCount: Int = 0
    var fetchActivityDetailsToBeReturned: ActivityDetails?
    
    // MARK: Methods
    
    func fetchActivityDetails(_ completion: @escaping (ActivityDetails?) -> Void) {
        fetchActivityDetailsCalled = true
        fetchActivityDetailsCallCount += 1
        completion(fetchActivityDetailsToBeReturned)
    }
}
