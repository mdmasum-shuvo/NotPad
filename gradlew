package net.maxproit.salesforce.databinding;
import net.maxproit.salesforce.R;
import net.maxproit.salesforce.BR;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
@SuppressWarnings("unchecked")
public class NewDaviationRequestRowBindingImpl extends NewDaviationRequestRowBinding  {

    @Nullable
    private static final android.databinding.ViewDataBinding.IncludedLayouts sIncludes;
    @Nullable
    private static final android.util.SparseIntArray sViewsWithIds;
    static {
        sIncludes = null;
        sViewsWithIds = new android.util.SparseIntArray();
        sViewsWithIds.put(R.id.id, 6);
        sViewsWithIds.put(R.id.name, 7);
        sViewsWithIds.put(R.id.textView23, 8);
        sViewsWithIds.put(R.id.textView25, 9);
        sViewsWithIds.put(R.id.textView27, 10);
    }
    // views
    // variables
    // values
    // listeners
    // Inverse Binding Event Handlers

    public NewDaviationRequestRowBindingImpl(@Nullable android.databinding.DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, mapBindings(bindingComponent, root, 11, sIncludes, sViewsWithIds));
    }
    private NewDaviationRequestRowBindingImpl(android.databinding.DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 0
            , (android.support.constraint.ConstraintLayout) bindings[0]
            , (android.widget.TextView) bindings[6]
            , (android.widget.TextView) bindings[7]
            , (android.widget.TextView) bindings[8]
            , (android.widget.TextView) bindings[3]
            , (android.widget.TextView) bindings[9]
            , (android.widget.TextView) bindings[4]
            , (android.widget.TextView) bindings[10]
            , (android.widget.TextView) bindings[5]
            , (android.widget.TextView) bindings[1]
            , (android.widget.TextView) bindings[2]
            );
        this.clLeadItem.setTag(null);
        this.textView24.setTag(null);
        this.textView26.setTag(null);
        this.textView28.setTag(null);
        this.tvId.setTag(null);
        this.tvName.setTag(null);
        setRootTag(root);
        // listeners
        invalidateAll();
    }

    @Override
    public void invalidateAll() {
        synchronized(this) {
                mDirtyFlags = 0x2L;
        }
        requestRebind();
    }

    @Override
    public boolean hasPendingBindings() {
        synchronized(this) {
            if (mDirtyFlags != 0) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean setVariable(int variableId, @Nullable Object variable)  {
        boolean variableSet = true;
        if (BR.model == variableId) {
            setModel((net.maxproit.salesforce.masum.model.api.deviation.postdeviation.DeviationDetail) variable);
        }
        else {
            variableSet = false;
        }
            return variableSet;
    }

    public void setModel(@Nullable net.maxproit.salesforce.masum.model.api.deviation.postdeviation.DeviationDetail Model) {
        this.mModel = Model;
        synchronized(this) {
            mDirtyFlags |= 0x1L;
        }
        notifyPropertyChanged(BR.model);
        super.requestRebind();
    }

    @Override
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        switch (localFieldId) {
        }
        return false;
    }

    @Override
    protected void executeBindings() {
        long dirtyFlags = 0;
        synchronized(this) {
            dirtyFlags = mDirtyFlags;
            mDirtyFlags = 0;
        }
        net.maxproit.salesforce.masum.model.api.deviation.postdeviation.DeviationJustification modelDeviationJustification = null;
        java.lang.String modelApprovalTier = null;
        java.lang.String modelDeviationHeadRiskCategory = null;
        net.maxproit.salesforce.masum.model.api.deviation.postdeviation.DeviationDetail model = mModel;
        net.maxproit.salesforce.masum.model.api.deviation.postdeviation.DeviationHead modelDeviationHead = null;
        java.lang.String modelDeviationCategoryDeviationCategory = null;
        java.lang.String javaLangStringModelDeviationHeadDevAccountHeadName = null;
        net.maxproit.salesforce.masum.model.api.deviation.postdeviation.DeviationCategory modelDeviationCategory = null;
        java.lang.String modelDeviationJustificationJustification = null;
        java.lang.String modelDeviationHeadDevAccountHeadName = null;

        if ((dirtyFlags & 0x3L) != 0) {



                if (model != null) {
                    // read model.deviationJustification
                    modelDeviationJustification = model.getDeviationJustification();
                    // read model.approvalTier
                    modelApprovalTier = model.getApprovalTier();
                    // read model.deviationHead
                    modelDeviationHead = model.getDeviationHead();
                    // read model.deviationCategory
                    modelDeviationCategory = model.getDeviationCategory();
          