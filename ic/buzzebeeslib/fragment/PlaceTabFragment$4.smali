.class Lic/buzzebeeslib/fragment/PlaceTabFragment$4;
.super Ljava/lang/Object;
.source "PlaceTabFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceTabFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/fragment/PlaceTabFragment;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceTabFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceTabFragment;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 198
    # getter for: Lic/buzzebeeslib/fragment/PlaceTabFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick gotoDrawListView"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceTabFragment$4;->this$0:Lic/buzzebeeslib/fragment/PlaceTabFragment;

    # invokes: Lic/buzzebeeslib/fragment/PlaceTabFragment;->gotoPlacesListView()V
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceTabFragment;->access$4(Lic/buzzebeeslib/fragment/PlaceTabFragment;)V

    .line 200
    return-void
.end method