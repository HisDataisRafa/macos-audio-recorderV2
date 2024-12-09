import Cocoa

class MainViewController: NSViewController {
    private var audioRecorder: AudioRecorderController!
    private var recordButton: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        audioRecorder = AudioRecorderController()
    }
    
    private func setupUI() {
        recordButton = NSButton(frame: NSRect(x: 20, y: 20, width: 100, height: 30))
        recordButton.title = "Grabar"
        recordButton.bezelStyle = .rounded
        recordButton.target = self
        recordButton.action = #selector(toggleRecording)
        view.addSubview(recordButton)
    }
    
    @objc private func toggleRecording() {
        if recordButton.title == "Grabar" {
            audioRecorder.startRecording()
            recordButton.title = "Detener"
        } else {
            audioRecorder.stopRecording()
            recordButton.title = "Grabar"
        }
    }
}