.class Lcom/samsung/privilege/activity/ProfileActivity$5$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity$5;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/ProfileActivity$5;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity$5;)V
    .registers 2

    .prologue
    .line 325
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$5$1;->a:Lcom/samsung/privilege/activity/ProfileActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 328
    iget-object v0, p0, Lcom/samsung/privilege/activity/ProfileActivity$5$1;->a:Lcom/samsung/privilege/activity/ProfileActivity$5;

    iget-object v0, v0, Lcom/samsung/privilege/activity/ProfileActivity$5;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$5$1;->a:Lcom/samsung/privilege/activity/ProfileActivity$5;

    iget-object v1, v1, Lcom/samsung/privilege/activity/ProfileActivity$5;->c:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 330
    return-void
.end method