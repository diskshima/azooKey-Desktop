import InputMethodKit

indirect enum ClientAction {
    case `consume`
    case `fallthrough`
    case showCandidateWindow
    case hideCandidateWindow
    case appendToMarkedText(String)
    case removeLastMarkedText

    case commitMarkedText
    /// Shift+←→で選択範囲をエディットするコマンド
    case editSegment(Int)

    /// スペースを押して`.selecting`に入るコマンド
    case enterCandidateSelectionMode
    case submitSelectedCandidate
    case selectNextCandidate
    case selectPrevCandidate
    case selectNumberCandidate(Int)

    case selectInputMode(InputMode)

    case stopComposition

    enum InputMode {
        case roman
        case japanese
    }

    case sequence([ClientAction])
}
