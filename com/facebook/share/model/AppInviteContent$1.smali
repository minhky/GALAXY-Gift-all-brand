.class final Lcom/facebook/share/model/AppInviteContent$1;
.super Ljava/lang/Object;
.source "AppInviteContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/AppInviteContent;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/share/model/AppInviteContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/AppInviteContent;
    .registers 3

    .prologue
    .line 69
    new-instance v0, Lcom/facebook/share/model/AppInviteContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/AppInviteContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/AppInviteContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/AppInviteContent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/share/model/AppInviteContent;
    .registers 3

    .prologue
    .line 73
    new-array v0, p1, [Lcom/facebook/share/model/AppInviteContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/AppInviteContent$1;->newArray(I)[Lcom/facebook/share/model/AppInviteContent;

    move-result-object v0

    return-object v0
.end method
