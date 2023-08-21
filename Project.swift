import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

/*
                +-------------+
                |             |
                |     App     | Contains TuistExample App target and TuistExample unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project(
    name: "TuistExample",
    organizationName: "MyTuistOrg",
    targets: [
        Target(
            name: "TuistMain",
            platform: .iOS,
            product: .app,
            bundleId: "io.tuist.Tuist",
            sources: ["Sources/**"]
        )
    ]
    //platform: .iOS,
    //additionalTargets: ["TuistExampleKit", "TuistExampleUI"]
)
