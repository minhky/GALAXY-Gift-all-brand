.class Lic/buzzebeeslib/activity/PostActivity$2;
.super Ljava/lang/Object;
.source "PostActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PostActivity;->doKeyboardIcon(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/PostActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PostActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PostActivity$2;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 804
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity$2;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gArrayStickers:Ljava/util/ArrayList;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PostActivity;->access$8(Lic/buzzebeeslib/activity/PostActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lic/buzzebeeslib/bean/Sticker;

    .line 805
    .local v6, "sticker":Lic/buzzebeeslib/bean/Sticker;
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity$2;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PostActivity;->access$10(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 807
    iget-object v0, p0, Lic/buzzebeeslib/activity/PostActivity$2;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;
    invoke-static {v0}, Lic/buzzebeeslib/activity/PostActivity;->access$5(Lic/buzzebeeslib/activity/PostActivity;)Lcom/bitmapfun/util/ImageFetcher;

    move-result-object v0

    iget-object v1, v6, Lic/buzzebeeslib/bean/Sticker;->PictureUrl:Ljava/lang/String;

    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity$2;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gImgAttachImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lic/buzzebeeslib/activity/PostActivity;->access$10(Lic/buzzebeeslib/activity/PostActivity;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->t1_1:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 808
    return-void
.end method
