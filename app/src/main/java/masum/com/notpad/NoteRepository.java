package masum.com.notpad;

import android.app.Application;
import android.arch.lifecycle.LiveData;
import android.os.AsyncTask;

import java.util.List;

public class NoteRepository {

    //data access class
    private MyNoteDao noteDao;

    private LiveData<List<Note>> noteDataList;

    public NoteRepository(Application application) {

        // create instance object
        NoteDatabase noteDatabase = NoteDatabase.getInstance(application);
        noteDao = noteDatabase.myNoteDao();
        noteDataList = noteDao.getAllNote();
    }


    public void insertNoteData(Note note) {

        new InsertNoteDataAsyncTask(noteDao).execute(note);

    }

    public void updateNoteData(Note note) {

        new UpdateDataAsyncTask(noteDao).execute(note);
    }

    public void deletetNoteData(Note note) {

        new DeleteDataAsyncTask(noteDao).execute(note);
    }

    public void deleteAllData() {

        new DeleteAllDataAsyncTask(noteDao).execute();
    }


    public LiveData<List<Note>> getAllData() {
        return noteDataList;
    }


    private static class InsertNoteDataAsyncTask extends AsyncTask<Note, Void, Void> {

        private MyNoteDao noteDao;

        public InsertNoteDataAsyncTask(MyNoteDao noteDao) {
            this.noteDao = noteDao;

        }


        @Override
        protected Void doInBackground(Note... notes) {
            noteDao.insertNoteData(notes[0]);
            return null;

        }
    }


    private class UpdateDataAsyncTask extends AsyncTask<Note, Void, Void> {
        MyNoteDao noteDao;

        private UpdateDataAsyncTask(MyNoteDao noteDao) {
            this.noteDao = noteDao;
        }

        @Override
        protected Void doInBackground(Note... notes) {
            noteDao.updateNoteData(notes[0]);
            return null;
        }
    }

    private class DeleteDataAsyncTask extends AsyncTask<Note, Void, Void> {
        MyNoteDao noteDao;

        private DeleteDataAsyncTask(MyNoteDao noteDao) {
            this.noteDao = noteDao;
        }

        @Override
        protected Void doInBackground(Note... notes) {
            noteDao.deleteNoteData(notes[0]);
            return null;
        }
    }

    private class DeleteAllDataAsyncTask extends AsyncTask<Void, Void, Void> {
        MyNoteDao noteDao;

        private DeleteAllDataAsyncTask(MyNoteDao noteDao) {
            this.noteDao = noteDao;
        }

        @Override
        protected Void doInBackground(Void... notes) {
            noteDao.deleteAllNoteData();
            return null;
        }
    }
}
