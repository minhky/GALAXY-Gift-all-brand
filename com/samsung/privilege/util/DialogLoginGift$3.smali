.class final Lcom/samsung/privilege/util/DialogLoginGift$3;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/widget/ImageButton;)V
    .registers 7

    .prologue
    .line 178
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->e:Ljava/lang/Object;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->f:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    .line 180
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_3d

    .line 181
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->k(Landroid/content/Context;)Z

    move-result v0

    if-ne v0, v1, :cond_27

    .line 183
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->e:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 188
    :goto_1e
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->c:Ljava/lang/String;

    const-string/jumbo v1, "Click Device Login"

    invoke-static {v0, v1}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_26
    return-void

    .line 185
    :cond_27
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->b:Landroid/os/Handler;

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    iget-object v7, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->e:Ljava/lang/Object;

    invoke-static/range {v0 .. v7}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1e

    .line 190
    :cond_3d
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$3;->f:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Landroid/widget/ImageButton;Lcom/facebook/login/widget/LoginButton;)V

    goto :goto_26
.end method
