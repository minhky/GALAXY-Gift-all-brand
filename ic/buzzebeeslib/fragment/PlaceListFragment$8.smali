.class Lic/buzzebeeslib/fragment/PlaceListFragment$8;
.super Ljava/lang/Object;
.source "PlaceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceListFragment;->ProcessJsonPlace(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

.field private final synthetic val$loadMore:Z


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceListFragment;Z)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$8;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iput-boolean p2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$8;->val$loadMore:Z

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 705
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$8;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$20(Lic/buzzebeeslib/fragment/PlaceListFragment;)Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$8;->val$loadMore:Z

    if-nez v0, :cond_5b

    :cond_c
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$8;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 706
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$8;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    new-instance v1, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$8;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v3, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$8;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    invoke-virtual {v3}, Lic/buzzebeeslib/fragment/PlaceListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$8;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gArrayPlace:Ljava/util/ArrayList;
    invoke-static {v4}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$21(Lic/buzzebeeslib/fragment/PlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;-><init>(Lic/buzzebeeslib/fragment/PlaceListFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$28(Lic/buzzebeeslib/fragment/PlaceListFragment;Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;)V

    .line 707
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$8;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gArrayPlace:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$21(Lic/buzzebeeslib/fragment/PlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$8;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gArrayPlace:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$21(Lic/buzzebeeslib/fragment/PlaceListFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_52

    .line 708
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$8;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$8;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$20(Lic/buzzebeeslib/fragment/PlaceListFragment;)Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 717
    :goto_51
    return-void

    .line 710
    :cond_52
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$8;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/control/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_51

    .line 713
    :cond_5b
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$8;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->gAdapter:Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$20(Lic/buzzebeeslib/fragment/PlaceListFragment;)Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment$PlacesListNewAdapter;->notifyDataSetChanged()V

    .line 714
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$8;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    iget-object v0, v0, Lic/buzzebeeslib/fragment/PlaceListFragment;->gListNewPlace:Lic/buzzebeeslib/control/PullToRefreshListView;

    invoke-virtual {v0}, Lic/buzzebeeslib/control/PullToRefreshListView;->refreshDrawableState()V

    .line 715
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceListFragment$8;->this$0:Lic/buzzebeeslib/fragment/PlaceListFragment;

    # getter for: Lic/buzzebeeslib/fragment/PlaceListFragment;->footerListView:Landroid/view/View;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceListFragment;->access$27(Lic/buzzebeeslib/fragment/PlaceListFragment;)Landroid/view/View;

    move-result-object v0

    sget v1, Lic/buzzebeeslib/R$idWallListFooter;->layoutRoot:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_51
.end method