.class Lcom/samsung/privilege/util/DialogSerialGift$12$1;
.super Ljava/lang/Object;
.source "DialogSerialGift.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogSerialGift$12;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogSerialGift$12;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogSerialGift$12;)V
    .registers 2

    .prologue
    .line 525
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogSerialGift$12$1;->a:Lcom/samsung/privilege/util/DialogSerialGift$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 527
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$12$1;->a:Lcom/samsung/privilege/util/DialogSerialGift$12;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogSerialGift$12;->d:Landroid/widget/TextView;

    const-string/jumbo v1, " XXXXXXX "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$12$1;->a:Lcom/samsung/privilege/util/DialogSerialGift$12;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogSerialGift$12;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$12$1;->a:Lcom/samsung/privilege/util/DialogSerialGift$12;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogSerialGift$12;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$12$1;->a:Lcom/samsung/privilege/util/DialogSerialGift$12;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogSerialGift$12;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$12$1;->a:Lcom/samsung/privilege/util/DialogSerialGift$12;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogSerialGift$12;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$12$1;->a:Lcom/samsung/privilege/util/DialogSerialGift$12;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogSerialGift$12;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogSerialGift$12$1;->a:Lcom/samsung/privilege/util/DialogSerialGift$12;

    iget-object v1, v1, Lcom/samsung/privilege/util/DialogSerialGift$12;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogSerialGift$12$1;->a:Lcom/samsung/privilege/util/DialogSerialGift$12;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogSerialGift$12;->i:Landroid/widget/TextView;

    const-string/jumbo v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 536
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/privilege/util/DialogSerialGift;->a(Z)Z

    .line 537
    return-void
.end method
