.class Landroid/support/v4/app/FragmentManagerImpl$2;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentManagerImpl;->b()V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .registers 2

    .prologue
    .line 599
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->a:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 601
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->a:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->o:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->j()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 602
    return-void
.end method
