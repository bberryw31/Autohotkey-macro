#SingleInstance force
SetBatchLines -1

global input_sequences := {} ; initialize an empty list of input sequences

; record a new input sequence
^+r::
    input_sequence := [] ; initialize an empty list for this input sequence
    prev_time := A_TickCount
    Loop {
        Input, key, L1 M
        curr_time := A_TickCount
        input_sequence.Push(key)
        input_sequence.Push(curr_time - prev_time)
        prev_time := curr_time
        if (key = "Escape") ; stop recording when the Escape key is pressed
            break
    }
    if (input_sequence.Length() > 0) {
        if (input_sequences.Length() >= 10)
            input_sequences.RemoveAt(1) ; remove the oldest input sequence if the list is full
        input_sequences.Push(input_sequence)
    }
return

; play a random input sequence in a loop with random delays
^+p::
    if (input_sequences.Length() = 0)
        return
    Loop {
        input_sequence := input_sequences[random(1, input_sequences.Length())]
        Loop % (input_sequence.Length() // 2) {
            key := input_sequence[A_Index * 2 - 1]
            delay := input_sequence[A_Index * 2]
            SendInput % key
            Sleep % (delay + random(-100, 100)) ; add a random delay between -100ms and 100ms
        }
    }
return

; helper function to generate a random integer between min and max (inclusive)
random(min, max) {
    Random, output, %min%, %max%
    return output
}

; create a GUI to display the input sequences
Gui, +LastFound +AlwaysOnTop
Gui, Add, Text,, Input sequences:
Gui, Add, ListBox, r10 w300 vInputSequences gSelectSequence, %input_sequences%
Gui, Show, x0 y0 w320 h200, Keyboard Input Recorder

; handle selection of an input sequence in the GUI
SelectSequence:
    selected_index := InputSequences
    if (selected_index > 0 && selected_index <= input_sequences.Length()) {
        selected_sequence := input_sequences[selected_index]
        msg := "Selected sequence:" . "`n`n"
        Loop % (selected_sequence.Length() // 2) {
            key := selected_sequence[A_Index * 2 - 1]
            delay := selected_sequence[A_Index * 2]
            msg .= key . " (" . delay . "ms)" . "`n"
        }
        MsgBox % msg
    }
return
