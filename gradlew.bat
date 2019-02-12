package net.maxproit.salesforce.databinding;
import net.maxproit.salesforce.R;
import net.maxproit.salesforce.BR;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
@SuppressWarnings("unchecked")
public class MyPerfomanceProspectRowBindingImpl extends MyPerfomanceProspectRowBinding  {

    @Nullable
    private static final android.databinding.ViewDataBinding.IncludedLayouts sIncludes;
    @Nullable
    private static final android.util.SparseIntArray sViewsWithIds;
    static {
        sIncludes = null;
        sViewsWithIds = new android.util.SparseIntArray();
        sViewsWithIds.put(R.id.id, 5);
        sViewsWithIds.put(R.id.name, 6);
        sViewsWithIds.put(R.id.branch, 7);
        sViewsWithIds.put(R.id.status, 8);
    }
    // views
    // variables
    // values
    // listeners
    // Inverse Binding Event Handlers

    public MyPerfomanceProspectRowBindingImpl(@Nullable android.databinding.DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, mapBindings(bindingComponent, root, 9, sIncludes, sViewsWithIds));
    }
    private MyPerfomanceProspectRowBindingImpl(android.databinding.DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0
            , (android.widget.TextView) bindings[7]
            , (android.support.constraint.ConstraintLayout) bindings[0]
            , (android.widget.TextView) bindings[5]
            , (android.widget.TextView) bindings[6]
            , (android.widget.TextView) bindings[8]
            , (android.widget.TextView) bindings[3]
            , (android.widget.TextView) bindings[1]
            , (android.widget.TextView) bindings[2]
            , (android.widget.TextView) bindings[4]
            );
        this.clMyProspectItem.setTag(null);
        this.tvBranch.setTag(null);
        this.tvId.setTag(null);
        this.tvName.setTag(null);
        this.tvStatus.setTag(null);
        setRootTag(root);
        // listeners
        invalidateAll();
    }

    @Override
    public void invalidateAll() {
        synchronized(this) {
                mDirtyFlags = 0x2L;