.class final Lcom/samsung/privilege/util/DialogLoginGift$18;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Landroid/os/Handler;

.field final synthetic f:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$18;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogLoginGift$18;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogLoginGift$18;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/privilege/util/DialogLoginGift$18;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/samsung/privilege/util/DialogLoginGift$18;->e:Landroid/os/Handler;

    iput-object p6, p0, Lcom/samsung/privilege/util/DialogLoginGift$18;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$18;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1179
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$18;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/privilege/util/DialogLoginGift$18;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogLoginGift$18;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/privilege/util/DialogLoginGift$18;->e:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/privilege/util/DialogLoginGift$18;->f:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/util/DialogLoginGift;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;)V

    .line 1180
    return-void
.end method
