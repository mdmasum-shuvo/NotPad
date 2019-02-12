package masum.com.notpad;

import android.app.Application;
import android.arch.lifecycle.AndroidViewModel;
import android.arch.lifecycle.LiveData;

import java.util.List;

public class NoteViewModel extends AndroidViewModel {
    NoteRepository noteRepository;
    LiveData<List<Note>> allNoteList;

    public NoteViewModel(Application application) {
        super(application);
        noteRepository = new NoteRepository(application);
        allNoteList = noteRepository.getAllData();

    }


    public void insertData(Note note) {
        noteRepository.insertNoteData(note);
    }

    public void updateData(Note note) {
        noteRepository.updateNoteData(note);
    }

    public void deleteData(Note note) {
        noteRepository.deletetNoteData(note);
    }

    public void deleteAllData() {
        noteRepository.deleteAllData();
    }

    public LiveData<List<Note>> getAllData() {
        return allNoteList;
    }
}
