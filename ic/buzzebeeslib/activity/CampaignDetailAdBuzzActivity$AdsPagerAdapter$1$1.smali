.class Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$1$1;
.super Ljava/lang/Object;
.source "CampaignDetailAdBuzzActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$1;->onPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$1;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$1;

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 661
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 662
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$1$1;->this$2:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$1;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$1;->this$1:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$1;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter$1;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$AdsPagerAdapter;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    move-result-object v0

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->finish()V

    .line 663
    return-void
.end method