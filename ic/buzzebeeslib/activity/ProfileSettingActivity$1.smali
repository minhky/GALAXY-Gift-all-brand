.class Lic/buzzebeeslib/activity/ProfileSettingActivity$1;
.super Ljava/lang/Object;
.source "ProfileSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/ProfileSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/ProfileSettingActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$1;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 415
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$1;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    invoke-static {v0, v2}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->access$0(Lic/buzzebeeslib/activity/ProfileSettingActivity;Z)V

    .line 416
    iget-object v0, p0, Lic/buzzebeeslib/activity/ProfileSettingActivity$1;->this$0:Lic/buzzebeeslib/activity/ProfileSettingActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/ProfileSettingActivity;->showDialog(I)V

    .line 417
    return v2
.end method
