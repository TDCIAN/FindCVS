//
//  LocalNetworkStub.swift
//  FindCVSTests
//
//  Created by JeongminKim on 2022/01/11.
//

import Foundation
import RxSwift
import Stubber // 네트워크 로직의 경우 변수가 많다 -> 가상의 더미 데이터를 넣어주는 외부 라이브러리

@testable import FindCVS

class LocalNetworkStub: LocalNetwork {
    override func getLocation(by mapPoint: MTMapPoint) -> Single<Result<LocationData, URLError>> {
        return Stubber.invoke(getLocation, args: mapPoint)
    }
}
