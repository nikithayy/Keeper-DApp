import List "mo:base/List";
import Debug "mo:base/Debug";

actor DKeeper {

    public type Note = {
        title: Text;
        content: Text;
    };

    stable var notes: List.List<Note> = List.nil<Note>();

    public func createNote(titleText: Text, contentText: Text) {

        let newNote: Note = {
            title = titleText;
            content = contentText;
        };

        notes := List.push(newNote,  notes);
        Debug.print(debug_show(notes));

    };

    public query func readNotes(): async [Note] {
        return List.toArray(notes);
    };

    public func removeNote(id: Nat) {
        //take drop append  // eg [A,B,C,D]
        let listFront = List.take(notes, id);  //Takes first no.of id elements  //Take(2)=[C,D]
        let listBack = List.drop(notes, id + 1); //takes no.of id+1  elements from last // drop(2+1)=[A]
        notes := List.append(listFront, listBack);
    
    }

}