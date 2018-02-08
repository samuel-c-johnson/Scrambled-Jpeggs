import XCTest
import UIKit
@testable import Scrambled_Jpeggs

class Scrambled_JpeggsTests: XCTestCase {
    var game: ViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        game = storyboard.instantiateViewController(withIdentifier: "Main") as! ViewController
        let _ = game.view
    }
    
    override func tearDown() {
        game = nil
        super.tearDown()
    }
   
    
    func testMakeBlocks() {
        game.makeBlocks()
        XCTAssertEqual(game.blockArray.count, 16)
    }
    
    func testBlock1CenterPoint() {
        game.makeBlocks()
        XCTAssertEqual((game.blockArray[0] as! UIImageView).center, CGPoint(x: game.blockWidth/2, y: game.blockWidth/2))
        XCTAssertNotEqual((game.blockArray[0] as! UIImageView).center, CGPoint(x: game.blockWidth/3, y: game.blockWidth/3))
    }
    
    func testBlock2CenterPoint() {
        game.makeBlocks()
        XCTAssertEqual((game.blockArray[1] as! UIImageView).center, CGPoint(x: (1.5 * game.blockWidth), y: game.blockWidth/2))
        XCTAssertNotEqual((game.blockArray[1] as! UIImageView).center, CGPoint(x: game.blockWidth/3, y: game.blockWidth/3))
    }

}
