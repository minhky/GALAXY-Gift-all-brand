.class Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener;
.super Ljava/lang/Object;
.source "StampListActivity.java"

# interfaces
.implements Lcom/bzbs/event/LoginEvents$LoginListener;


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampListActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/StampListActivity;)V
    .registers 2

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/StampListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/StampListActivity;Lcom/samsung/privilege/activity/StampListActivity$1;)V
    .registers 3

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/StampListActivity;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 154
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/StampListActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampListActivity;->b(Lcom/samsung/privilege/activity/StampListActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener$1;-><init>(Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/StampListActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/StampListActivity;->b(Lcom/samsung/privilege/activity/StampListActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener$2;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener$2;-><init>(Lcom/samsung/privilege/activity/StampListActivity$UserLoginListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 149
    return-void
.end method
