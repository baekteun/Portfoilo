import Foundation

struct ProjectInfo: Equatable, Hashable {
    let summary: String
    let experiences: [String]
    let stack: [String]
    let team: String?

    init(
        summary: String,
        experiences: [String],
        stack: [String],
        team: String? = nil
    ) {
        self.summary = summary
        self.experiences = experiences
        self.stack = stack
        self.team = team
    }
}
