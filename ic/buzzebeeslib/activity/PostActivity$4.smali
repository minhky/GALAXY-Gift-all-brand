.class Lic/buzzebeeslib/activity/PostActivity$4;
.super Ljava/lang/Object;
.source "PostActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/PostActivity;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/PostActivity;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/PostActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/PostActivity$4;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    iput-object p2, p0, Lic/buzzebeeslib/activity/PostActivity$4;->val$msg:Ljava/lang/String;

    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 939
    iget-object v1, p0, Lic/buzzebeeslib/activity/PostActivity$4;->this$0:Lic/buzzebeeslib/activity/PostActivity;

    # getter for: Lic/buzzebeeslib/activity/PostActivity;->gActivity:Lic/buzzebeeslib/activity/PostActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/PostActivity;->access$4(Lic/buzzebeeslib/activity/PostActivity;)Lic/buzzebeeslib/activity/PostActivity;

    move-result-object v1

    iget-object v2, p0, Lic/buzzebeeslib/activity/PostActivity$4;->val$msg:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 940
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 941
    return-void
.end method
