.class Lcom/samsung/privilege/util/DialogLoginGift$17$1;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift$17;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/util/DialogLoginGift$17;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/util/DialogLoginGift$17;)V
    .registers 2

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$17$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$17;

    iget-object v0, v0, Lcom/samsung/privilege/util/DialogLoginGift$17;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$17$1;->a:Lcom/samsung/privilege/util/DialogLoginGift$17;

    iget-boolean v1, v1, Lcom/samsung/privilege/util/DialogLoginGift$17;->d:Z

    invoke-static {v0, v1}, Lcom/bzbs/data/UserLogin;->r(Landroid/content/Context;Z)V

    .line 1170
    return-void
.end method
