package masum.com.notpad;

import android.arch.persistence.db.SupportSQLiteDatabase;
import android.arch.persistence.room.Database;
import android.arch.persistence.room.Room;
import android.arch.persistence.room.RoomDatabase;
import android.content.Context;
import android.os.AsyncTask;
import android.support.annotation.NonNull;

//Singleton class for database
@Database(entities = {Note.class}, version = 1)
public abstract class NoteDatabase extends RoomDatabase {

    public abstract MyNoteDao myNoteDao();

    private static NoteDatabase instance;

    public static synchronized NoteDatabase getInstance(Context context) {
        if (instance == null) {
            instance = Room.databaseBuilder(context, NoteDatabase.class, "db")
                    .fallbackToDestructiveMigration()
                    .addCallback(roomCallback).build();
        }
        return instance;
    }


    private static RoomDatabase.Callback roomCallback = new RoomDatabase.Callback() {
        @Override
        public void onCreate(@NonNull SupportSQLiteDatabase db) {
            super.onCreate(db);
            new PopulateDataAsyncTask(instance).execute();
        }
    };

    private static class PopulateDataAsyncTask extends AsyncTask<Void, Void, Void> {
        private MyNoteDao noteDao;

        private PopulateDataAsyncTask(NoteDatabase noteDatabase) {
            noteDao = noteDatabase.myNoteDao();
        }

        @Override
        protected Void doInBackground(Void... voids) {
            noteDao.insertNoteData(new Note("title 1", "description 1"));
            noteDao.insertNoteData(new Note("title 2", "description 2"));
            noteDao.insertNoteData(new Note("title 3", "description 3"));
            return null;
        }
    }


}
