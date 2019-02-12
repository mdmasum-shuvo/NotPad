package masum.com.notpad;

import android.arch.lifecycle.LiveData;
import android.arch.persistence.room.Dao;
import android.arch.persistence.room.Delete;
import android.arch.persistence.room.Insert;
import android.arch.persistence.room.Query;
import android.arch.persistence.room.Update;

import java.util.List;

@Dao
public interface MyNoteDao {

    @Insert
    void insertNoteData(Note note);

    @Update
    void updateNoteData(Note note);

    @Delete
    void deleteNoteData(Note note);

    @Query("delete from note_table")
    void deleteAllNoteData();

    @Query("Select * from note_table")
    LiveData<List<Note>> getAllNote();


}
